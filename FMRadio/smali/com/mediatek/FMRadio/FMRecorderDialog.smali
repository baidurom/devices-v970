.class public Lcom/mediatek/FMRadio/FMRecorderDialog;
.super Landroid/app/Dialog;
.source "FMRecorderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ROCORDING_FILENAME_MAX_SIZE:I = 0xff

.field private static final ROCORDING_FILENAME_SUFFIX_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FMRecorderDialog"


# instance fields
.field private mButtonDiscard:Landroid/widget/Button;

.field private mButtonSave:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRecordingName:Ljava/lang/String;

.field private mIsNeedCheckFilenameExist:Z

.field private mRecordingNameEditText:Landroid/widget/EditText;

.field private mSDDirectory:Ljava/lang/String;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V
    .locals 1
    .parameter "context"
    .parameter "iFMRadioservice"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 72
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    .line 86
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->requestWindowFeature(I)Z

    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->showRenameDialog()V

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRecorderDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private setEditTextFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter "edit"

    .prologue
    .line 167
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorderDialog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRecorderDialog$2;-><init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V

    .line 203
    .local v0, filter:Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 204
    return-void
.end method

.method private setTextChangedCallback()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->setEditTextFilter(Landroid/widget/EditText;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/mediatek/FMRadio/FMRecorderDialog$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRecorderDialog$1;-><init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    return-void
.end method

.method private showRenameDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 130
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRecorderDialog;->setContentView(I)V

    .line 132
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    .line 133
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonDiscard:Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonDiscard:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f060019

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRecorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    .line 141
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    const-string v1, "FMRecorderDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedialog: focused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->setTextChangedCallback()V

    .line 156
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FMRecorderDialog"

    const-string v2, "Exception while getRecordingName: "

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 208
    const/4 v2, 0x0

    .line 210
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, RecordingNameToSave:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mSDDirectory:Ljava/lang/String;

    const-string v6, "FM Recording"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v4, recordingFolderPath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v3, recordingFileToSave:Ljava/io/File;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 222
    const-string v5, "FMRecorderDialog"

    const-string v6, "Error:recording file is not exist!"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mDefaultRecordingName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    .line 227
    const-string v5, "FMRecorderDialog"

    const-string v6, "New name is the same as default name,so need not check whether exist!"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    const-string v5, "FMRecorderDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is the recording file name need to check whether exist :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z

    if-eqz v5, :cond_2

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mRecordingNameEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v5, "FMRecorderDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".3gpp is already exists!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v5, v0}, Lcom/mediatek/FMRadio/IFMRadioService;->saveRecording(Ljava/lang/String;)V

    .line 243
    const-string v5, "FMRecorderDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FM recording file is saved in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->dismiss()V

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "FMRecorderDialog"

    const-string v6, "Exception while saveRecording file: "

    invoke-static {v5, v6, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 256
    .end local v0           #RecordingNameToSave:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #recordingFileToSave:Ljava/io/File;
    .end local v4           #recordingFolderPath:Ljava/io/File;
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorderDialog;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/FMRadio/IFMRadioService;->saveRecording(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->dismiss()V

    .line 261
    const-string v5, "FMRecorderDialog"

    const-string v6, "Discard FM recording file. "

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :catch_1
    move-exception v1

    .line 258
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v5, "FMRecorderDialog"

    const-string v6, "Exception while saveRecording file: "

    invoke-static {v5, v6, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
