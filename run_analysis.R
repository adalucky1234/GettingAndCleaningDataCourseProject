
# get y_train and y_test data
y_train = read.table('train/y_train.txt')
y_test = read.table('test/y_test.txt')

# get X_train and X_test data
X_train = read.table("train/X_train.txt")
X_test = read.table("test/X_test.txt")

# get features
features = read.table("features.txt")
featuresname = features$V2

# get activity_labels
activity_labels = read.table("activity_labels.txt")
activityname = activity_labels$V2

# get subjects_train_labels and subjects_test_labels
subjects_train_labels = read.table("train/subject_train.txt")
subjects_test_labels = read.table("test/subject_test.txt")

# merge the dfs: 
merge_X = rbind(X_train, X_test)
merge_Y = rbind(y_train, y_test)
merge_subjects = rbind(subjects_train_labels, subjects_test_labels)

# find feature idx contain mean and standard deviation
meanidx = grep("mean", featuresname)
stdidx = grep("std", featuresname)

# extract columns contain mean and standard deviation
dfmean = merge_X[, meanidx]
dfstd = merge_X[, stdidx]

# rename dfs names to corresponding colnames
names(dfmean) = grep("mean", featuresname, value = TRUE)
names(dfstd) = grep("std", featuresname, value = TRUE)

# t to time, f to freq, remove '-', remove '()', all lowercases
meannames1 = gsub("^t","time",names(dfmean)) 
meannames2 = gsub("^f","freq", meannames1)
meannames3 = gsub("-","\\.", meannames2)
meannames4 = gsub("\\()", "", meannames3)
meannamestidy = tolower(meannames4)

stdnames1 = gsub("^t","time",names(dfstd))
stdnames2 = gsub("^f","freq", stdnames1)
stdnames3 = gsub("-","\\.", stdnames2)
stdnames4 = gsub("\\()", "", stdnames3)
stdnamestidy = tolower(stdnames4)

# rename the 2 dfs to tidy names
names(dfmean) = meannamestidy
names(dfstd) = stdnamestidy

# create a new df, the 1st col is activityname, then comes means cols, std cols.
mergeall = cbind(merge_Y, dfmean, dfstd)

# lable the 1st col the corresponding activitynames
activity_idx = mergeall[, 1]
activitynames = activityname[activity_idx]
mergeall[, 1] = activitynames
names(mergeall)[1] = "activityname"

# task: creates a data set with the average of each variable for each activity and each subject.
# add an extra col: merge_subjects
mergeallwithsubjects = cbind(merge_subjects, mergeall)
names(mergeallwithsubjects)[1] = 'subjectname'

# group by subjectname, activityname, subsequently get mean of each col.
tidytable = mergeallwithsubjects %>% group_by(subjectname, activityname) %>% summarise_all(funs(mean))
