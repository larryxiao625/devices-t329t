.class Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I

.field static final SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

.field static final SPECIAL_SMS_PACKAGE_LEN:I


# instance fields
.field anrCount:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field dispatchClockTime:J

.field dispatchTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field isAddedDuringHibernate:Z

.field nextReceiver:I

.field final ordered:Z

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermission:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.method constructor <init>(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZ)V
    .locals 1
    .parameter "_intent"
    .parameter "_callerApp"
    .parameter "_callerPackage"
    .parameter "_callingPid"
    .parameter "_callingUid"
    .parameter "_requiredPermission"
    .parameter "_receivers"
    .parameter "_resultTo"
    .parameter "_resultCode"
    .parameter "_resultData"
    .parameter "_resultExtras"
    .parameter "_serialized"
    .parameter "_sticky"
    .parameter "_initialSticky"

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 173
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 174
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 175
    iput p4, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 176
    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 177
    iput-object p6, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    .line 178
    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 179
    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 180
    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 181
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 182
    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 183
    iput-boolean p12, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 184
    iput-boolean p13, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 185
    iput-boolean p14, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 186
    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 187
    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 188
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 84
    .local v3, now:J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 86
    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v9, :cond_0

    .line 87
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "extras: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "caller="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const-string v9, " pid="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    const-string v9, " uid="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 96
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "requiredPermission="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "dispatchClockTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    new-instance v9, Ljava/util/Date;

    iget-wide v10, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "dispatchTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 103
    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    .line 104
    const-string v9, " finishTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 108
    :goto_1
    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v9, :cond_2

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "anrCount="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 112
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v9, :cond_3

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 113
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultTo="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 114
    const-string v9, " resultCode="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 115
    const-string v9, " resultData="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    :cond_4
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v9, :cond_5

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultExtras="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 120
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v9, :cond_7

    .line 121
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultAbort="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 122
    const-string v9, " ordered="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 123
    const-string v9, " sticky="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 124
    const-string v9, " initialSticky="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 126
    :cond_7
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v9, :cond_9

    .line 127
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "nextReceiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    const-string v9, " receiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 130
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_a

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curFilter="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 133
    :cond_a
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_b

    .line 134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curReceiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 136
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_c

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curApp="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curComponent="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_c

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curSourceDir="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    :cond_c
    const-string v8, " (?)"

    .line 146
    .local v8, stateStr:Ljava/lang/String;
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v9, :pswitch_data_0

    .line 152
    :goto_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "state="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, N:I
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, p2:Ljava/lang/String;
    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 156
    .local v7, printer:Landroid/util/PrintWriterPrinter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v0, :cond_13

    .line 157
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 158
    .local v5, o:Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Receiver #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 159
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 160
    instance-of v9, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_12

    .line 161
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 156
    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 93
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v6           #p2:Ljava/lang/String;
    .end local v7           #printer:Landroid/util/PrintWriterPrinter;
    .end local v8           #stateStr:Ljava/lang/String;
    :cond_e
    const-string v9, "null"

    goto/16 :goto_0

    .line 106
    :cond_f
    const-string v9, " receiverTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_1

    .line 139
    :cond_10
    const-string v9, "--"

    goto/16 :goto_2

    .line 147
    .restart local v8       #stateStr:Ljava/lang/String;
    :pswitch_0
    const-string v8, " (IDLE)"

    goto :goto_3

    .line 148
    :pswitch_1
    const-string v8, " (APP_RECEIVE)"

    goto :goto_3

    .line 149
    :pswitch_2
    const-string v8, " (CALL_IN_RECEIVE)"

    goto :goto_3

    .line 150
    :pswitch_3
    const-string v8, " (CALL_DONE_RECEIVE)"

    goto :goto_3

    .line 153
    :cond_11
    const/4 v0, 0x0

    goto :goto_4

    .line 162
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v6       #p2:Ljava/lang/String;
    .restart local v7       #printer:Landroid/util/PrintWriterPrinter;
    :cond_12
    instance-of v9, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_d

    .line 163
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .end local v5           #o:Ljava/lang/Object;
    invoke-virtual {v5, v7, v6}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_6

    .line 165
    :cond_13
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.security"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE_LEN:I

    return-void
.end method

.method hookMessageBroadcast()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_0
    sget v9, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v8, v9, [Ljava/util/ArrayList;

    .local v8, specialPackageIndex:[Ljava/util/ArrayList;
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .local v4, len:I
    const/4 v2, -0x1

    .local v2, index:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_6

    const/4 v2, -0x1

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .local v7, r:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_4

    move-object v3, v7

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    .local v3, info:Lcom/android/server/am/BroadcastFilter;
    iget-object v9, v3, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/am/BroadcastRecord;->isSpecialPackage(Ljava/lang/String;)I

    move-result v2

    .end local v3           #info:Lcom/android/server/am/BroadcastFilter;
    :cond_1
    :goto_1
    const/4 v9, -0x1

    if-le v2, v9, :cond_3

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    aget-object v5, v8, v2

    .local v5, list:Ljava/util/ArrayList;
    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5       #list:Ljava/util/ArrayList;
    aput-object v5, v8, v2

    :cond_2
    aget-object v9, v8, v2

    invoke-virtual {v9, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v5           #list:Ljava/util/ArrayList;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    instance-of v9, v7, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_1

    move-object v3, v7

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .local v6, packageName:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/server/am/BroadcastRecord;->isSpecialPackage(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .end local v6           #packageName:Ljava/lang/String;
    :cond_5
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #r:Ljava/lang/Object;
    :cond_6
    sget v4, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE_LEN:I

    add-int/lit8 v1, v4, -0x1

    :goto_3
    if-ltz v1, :cond_8

    aget-object v5, v8, v1

    .restart local v5       #list:Ljava/util/ArrayList;
    if-eqz v5, :cond_7

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v10, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #list:Ljava/util/ArrayList;
    .end local v8           #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_8
    return-void
.end method

.method isSpecialPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    sget v1, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE_LEN:I

    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Lcom/android/server/am/BroadcastRecord;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
