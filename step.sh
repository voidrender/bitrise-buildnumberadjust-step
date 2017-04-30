echo "Current BITRISE_BUILD_NUMBER value: ${BITRISE_BUILD_NUMBER}"

if [ "${change}" -eq "${change}" ] 2>/dev/null; then
  if [ -n "${change}" ] 
   then 
    echo "Change Value: ${change}"
    let "BITRISE_BUILD_NUMBER=${change}";
  fi
fi

if [ "${increase}" -eq "${increase}" ] 2>/dev/null; then
 if [ -n "${increase}" ] 
  then 
   echo "Increase Value: ${increase}"
   let "BITRISE_BUILD_NUMBER=BITRISE_BUILD_NUMBER+${increase}"
 fi
fi

if [ "${decrease}" -eq "${decrease}" ] 2>/dev/null; then
 if [ -n "${decrease}" ] 
  then 
   echo "Decrease Value: ${decrease}"
   let "BITRISE_BUILD_NUMBER=BITRISE_BUILD_NUMBER-${decrease}"
 fi
fi

envman add --key BITRISE_BUILD_NUMBER --value "${BITRISE_BUILD_NUMBER}"
echo "Changed BITRISE_BUILD_NUMBER to value: ${BITRISE_BUILD_NUMBER}"