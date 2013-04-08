#
# Prametrised classes called by Hiera
#
class p_h_classes ( $p_h_classes = hiera_hash('p_h_classes', {} ) )
{
  validate_hash( $p_h_classes )
  if( ! empty( $p_h_classes ) )
  {
    create_resources( 'class', $p_h_classes )
  }
}
