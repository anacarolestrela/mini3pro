from launch import LaunchDescription
from ament_index_python.packages import get_package_share_directory
from launch_ros.actions import Node
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
import os

def generate_launch_description():
    # Obtém o caminho do pacote
    pkg_path = get_package_share_directory('simmini3pro')
    urdf_file = os.path.join(pkg_path, 'urdf', 'mini3prosim.urdf')

    return LaunchDescription([
        # Inicia o Gazebo se ele ainda não estiver rodando
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                os.path.join(get_package_share_directory('gazebo_ros'), 'launch', 'gazebo.launch.py')
            ),
        ),

        # Spawn do robô no Gazebo
        Node(
            package='gazebo_ros',
            executable='spawn_entity.py',
            arguments=['-file', urdf_file, '-entity', 'mini3pro'],
            output='screen'
        )
    ])
