function is_pi_plattform() {
  local -r REVCODE=$(awk '/Revision/ {print $3}' /proc/cpuinfo)
  REVISIONS=(0002 0003 0004 0005 0006 0007 0008 0009 000d 000e 000f)
  REVISIONS+=(0010 0011 0012 0013 0014 0015 )
  REVISIONS+=(900032 a01041 a21041 a22042 90092 90093 0x9000C1 a02082 a22082 )

#  echo "Revisions: ${REVISIONS[@]}"
#  echo "Plattform Rev Code: ${REVCODE}"
#  echo "Raspberry Pi ${REVISIONS[${REVCODE}]} (${REVCODE})"

  if [[ " ${REVISIONS[*]} " == *"${REVCODE}"* ]]; then
#    echo "Plattform is PI"
    return 1
  else
#    echo "Plattform is NO PI"
    return 0
  fi
}

is_pi_plattform
