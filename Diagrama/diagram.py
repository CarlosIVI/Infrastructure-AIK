# diagram.py
from diagrams import Cluster, Diagram
from diagrams.aws.compute import EC2
from diagrams.aws.database import RDS
from diagrams.aws.network import ELB


with Diagram("AIK web service", show=False):
    lb = ELB("lb")
    db = RDS("userdb")


    with Cluster("Service"):
        svc_group = EC2("web")

    lb >> svc_group >> db

