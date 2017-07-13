FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDY0Mjk3ZTg4LTY1N2MtNDZhYi1iYjUwLTJhZjdmODRlNWVjNgpuYW1lOiBweXppcC1kZW1v\
LWRiLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3B5emlwLWRlbW8tZGItYXBiCmRl\
c2NyaXB0aW9uOiBQeXRob24gWmlwIERlbW8gRGF0YWJhc2UgQVBCIEltcGxlbWVudGF0aW9uCmJp\
bmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogUHl6\
aXAgRGVtbyBEYXRhYmFzZSAoQVBCKQogIGxvbmdEZXNjcmlwdGlvbjogQSBkYXRhYmFzZSB3aXRo\
IEdJUyBzdXBwb3J0IGFuZCBzZWVkZWQgZGF0YSBmb3IgYSBkZW1vbnN0cmF0aW9uIHB5dGhvbiB3\
ZWJhcHAsIGh0dHBzOi8vZ2l0aHViLmNvbS9mdXNvci9weS16aXAtZGVtbwogIGltYWdlVXJsOiAK\
ICBkb2N1bWVudGF0aW9uVXJsOiBodHRwczovL2dpdGh1Yi5jb20vZnVzb3IvYXBiLWV4YW1wbGVz\
L3RyZWUvbWFzdGVyL3B5emlwLWRlbW8tZGItYXBiCiAgZGVwZW5kZW5jaWVzOgogICAgLSBkb2Nr\
ZXIuaW8vZmFiaWFudmYvcG9zdGdyZXNxbDpwb3N0Z2lzCiAgICAKcGFyYW1ldGVyczoKICAtIGRh\
dGFiYXNlX25hbWU6CiAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICB0aXRsZTogRGF0YWJhc2UgTmFtZQogICAgICAKICAtIGRhdGFiYXNlX3Bhc3N3b3JkOgogICAg\
ICBkZWZhdWx0OiBhZG1pbgogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGVzY3JpcHRpb246IEEg\
cmFuZG9tIGFscGhhbnVtZXJpYyBzdHJpbmcgaWYgbGVmdCBibGFuawogICAgICB0aXRsZTogRGF0\
YWJhc2UgUGFzc3dvcmQKICAgICAgCiAgLSBkYXRhYmFzZV91c2VyOgogICAgICBkZWZhdWx0OiBh\
ZG1pbgogICAgICB0aXRsZTogRGF0YWJhc2UgVXNlcgogICAgICB0eXBlOiBzdHJpbmcKICAgICAg\
bWF4bGVuZ3RoOiA2MwogICAgICAKICAKcmVxdWlyZWQ6CiAgLSBkYXRhYmFzZV9uYW1lCiAgLSBk\
YXRhYmFzZV91c2VyCiAg"

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

RUN yum install -y postgresql && yum clean all

USER apb
