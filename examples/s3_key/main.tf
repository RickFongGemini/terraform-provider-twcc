data "twcc_project" "testProject" {
    name = "ENT108079"
    platform = "ceph-taichung-default"
}

resource "twcc_s3_key" "key1" {
    name = "geminitestkey"
    platform = data.twcc_project.testProject.platform
    project = data.twcc_project.testProject.id
}
