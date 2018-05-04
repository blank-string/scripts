echo CREATING NEW EPISODE

./new-episode.sh || { echo 'Failed to create new episode' ; exit 1; }

echo UPDATING RSS

./rss.sh  || { echo 'Failed update rss module' ; exit 2; }

echo UPLOADING MEDIA - THIS TAKES AGES

./media.sh || { echo 'Failed uploading media' ; exit 3; }

echo UPDATING WEBSITE
./website.sh || { echo 'Failed deploying website' ; exit 4; }

echo All done
echo Now go publish to Facebook and Twitter
