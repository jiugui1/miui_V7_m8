.class Landroid/net/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mAlarmEnabled:Z

.field private mFrameworkScanIntervalMs:J

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    .line 3997
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3998
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    return-void
.end method

.method private setScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4005
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 4018
    :cond_0
    :goto_0
    return-void

    .line 4006
    :cond_1
    if-eqz p1, :cond_2

    .line 4007
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 4008
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$24500(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 4012
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0

    .line 4015
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$24500(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4016
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4030
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "DisconnectedState call setCountryCode()"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$24600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4031
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4033
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4034
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4069
    :cond_0
    :goto_0
    return-void

    .line 4038
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$24700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    .line 4046
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4053
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4054
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4065
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4066
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$24804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4057
    :cond_3
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_1
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4175
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4176
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4178
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 4179
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v11, 0x20058

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4072
    const/4 v2, 0x1

    .line 4073
    .local v2, "ret":Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 4167
    const/4 v2, 0x0

    .line 4169
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 4075
    :sswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4076
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$24800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 4078
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20047

    const/4 v10, -0x1

    const/4 v6, 0x0

    check-cast v6, Landroid/os/WorkSource;

    invoke-virtual {v7, v9, v10, v8, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 4079
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$24804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v11, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4088
    :sswitch_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$24804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v11, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4090
    const/4 v2, 0x0

    .line 4091
    goto :goto_0

    .line 4093
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_0

    .line 4094
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$10002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4096
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 4097
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 4098
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v8, 0x20084

    invoke-virtual {v6, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4099
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4102
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$24900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 4106
    :sswitch_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4107
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4108
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4109
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 4106
    goto :goto_1

    .line 4111
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4112
    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 4119
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/StateChangeResult;

    .line 4120
    .local v5, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, v5, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4122
    const/4 v2, 0x0

    .line 4123
    goto/16 :goto_0

    .line 4126
    .end local v5    # "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    :sswitch_6
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4127
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4130
    :cond_4
    const/4 v2, 0x0

    .line 4131
    goto/16 :goto_0

    .line 4134
    :sswitch_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4135
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 4138
    :cond_5
    const/4 v2, 0x0

    .line 4139
    goto/16 :goto_0

    .line 4141
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 4142
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4143
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4144
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4146
    .local v0, "defaultInterval":I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 4149
    .local v3, "scanIntervalMs":J
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    long-to-int v7, v3

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 4157
    .end local v0    # "defaultInterval":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "scanIntervalMs":J
    :cond_6
    :goto_2
    :sswitch_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4163
    const/4 v2, 0x0

    .line 4165
    goto/16 :goto_0

    .line 4150
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 4151
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Turn on scanning after p2p disconnected"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiStateMachine;->access$25000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4152
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$24804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v7, v11, v9, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 4073
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005b -> :sswitch_4
        0x2300b -> :sswitch_8
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
