How To Change Container YUM Source
===================================

On RHEL systems, containers inherit the subscription and Satellite
Content Views of the container host.  This can be problematic if there
are different currency expectations between host and container images.

The Makefile in this git repo gives an example of how to configure a
RHEL base image so that it sources it's content from repos and Content
Views that are different from the host.

We make use of 'debug certificates' from Satellite.  These
certificates allow you to access any repo for a given Organization.

To generate a debug certificate, go to 'Manage Organizations' and
'Edit' the organization that you're looking for.   Click on 'Primary'
and you should see the 'Generate and Download' button, as below:

