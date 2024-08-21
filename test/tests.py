import docker
from hstest import StageTest, dynamic_test, CheckResult
from hstest.testing.tested_program import TestedProgram

project_network = "hyper-network"
project_volume = "hyper-volume"


class DockerTest(StageTest):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.output = None
        self.client = docker.from_env()

    @dynamic_test()
    def test1(self):
        pr = TestedProgram()
        pr.start("Running solution")
        """Tests that network does not exists in the system"""
        network_names = [network.attrs.get("Name") for network in self.client.networks.list()]
        if project_network in network_names:
            return CheckResult.wrong(f"'{project_network}' should not be found in the system networks!")

        return CheckResult.correct()

    @dynamic_test()
    def test2(self):
        """Tests that volume does not exists in the system"""
        volume_names = [volume.attrs.get("Name") for volume in self.client.volumes.list()]
        if project_volume in volume_names:
            return CheckResult.wrong(f"'{project_volume}' should not be found in the system volumes!")

        return CheckResult.correct()


if __name__ == '__main__':
    DockerTest().run_tests()
