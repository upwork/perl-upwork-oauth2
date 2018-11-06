# Licensed under the Upwork's API Terms of Use;
# you may not use this file except in compliance with the Terms.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author::    Maksym Novozhylov (mnovozhilov@upwork.com)
# Copyright:: Copyright 2015(c) Upwork.com
# License::   See LICENSE.txt and TOS - https://developers.upwork.com/api-tos.html

package Net::Upwork::API::Routers::Hr::Freelancers::Offers;

use strict;
use warnings;
use parent "Net::Upwork::API";

use constant ENTRY_POINT => Net::Upwork::API::Client::ENTRY_POINT_API;

=pod

=head1 NAME

Auth

=head1 FUNCTIONS

=over 4

=item new($api)

Create a new object for accessing Auth API

B<Parameters>

$api

    API object

=cut

sub new {
    my ($class, $api) = @_;
    return Net::Upwork::API::init_router($class, $api, ENTRY_POINT);
}

=item get_list

    Get list of offers

B<Parameters>

$params

    Hash of parameters

B<Return value>

    JSON response as a string

=cut

sub get_list {
    my $self = shift;
    my %params = @_;

    return $self->client()->get("/offers/v1/contractors/offers", %params);
}

=item get_specific

    Get specific offer

B<Parameters>

$reference

    Offer reference

$params

    Hash of parameters

B<Return value>

    JSON response as a string

=cut

sub get_specific {
    my $self = shift;
    my $reference = shift;
    my %params = @_;

    return $self->client()->get("/offers/v1/contractors/offers/" . $reference, %params);
}

=item actions

    Apply specific action

B<Parameters>

$reference

    Offer reference

$params

    Hash of parameters

B<Return value>

    JSON response as a string

=cut

sub actions {
    my $self = shift;
    my $reference = shift;
    my %params = @_;

    return $self->client()->post("/offers/v1/clients/actions/" . $reference, %params);
}

=back

=head1 AUTHOR

Maksym Novozhylov C<< <mnovozhilov@upwork.com> >>

=head1 COPYRIGHT

Copyright E<copy> Upwork Global Corp., 2015

=cut

1;
