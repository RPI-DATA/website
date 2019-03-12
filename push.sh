hugo
git add -A
if [ -z "$1"]
then 
	git commit -m "push to public"
else
	git commit -m "$1"
fi
git push
