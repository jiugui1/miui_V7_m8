.class Lcom/android/server/content/SyncManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const-string v1, "SyncManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "SyncManager"

    const-string v2, "Internal storage is low."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 208
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "SyncManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    const-string v1, "SyncManager"

    const-string v2, "Internal storage is ok."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/content/SyncManager;->mStorageIsLow:Z
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 215
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;)V

    goto :goto_0
.end method
