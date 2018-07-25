How to decouple the container host yum dependency for Satellite managed container platforms
========================================================================

On RHEL systems, containers inherit the subscription and Satellite
Content Views of the container host.  This can be problematic if there
are different currency expectations for host and container images.

The Makefile in this git repo gives an example of how to configure a
RHEL base image so that it sources content from repos and Content
Views that are different from the host.

In order to make this work, we use 'debug certificates' from Satellite.  These
certificates allow you to access any repo for a given Organization.

To generate a debug certificate, go to 'Manage Organizations' and
'Edit' the organization that you're looking for.   Click on 'Primary'
and you should see the 'Generate and Download' button, as below:

![Satellite Screenshot](https://raw.githubusercontent.com/atgreen/howto-change-container-yum-source/master/images/sat.png)

In this example, when I download the certificate I get a file called
GreenLab-key-cert.pem.  Now look at the Makefile to see how this is
transformed into separate key and cert files for use by yum.

Finally, you can use debug certificates to browse the content of your
Satellite.  You may need to do this in order to locate the URL for the
repos you're interested in.  Instructions on generating and install
the right browser certificate can be found here:  https://theforeman.org/plugins/katello/nightly/troubleshooting/index.html

Good luck, and please feel free to file Issues and PRs.

Thanks,

AG


