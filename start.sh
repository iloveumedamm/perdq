if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://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@github.com/iloveumedamm/perdq.git /perdq
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /perdq
fi
cd /perdq
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
