.class final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamRecord"
.end annotation


# instance fields
.field public mBound:Z

.field public mConnected:Z

.field public final mIsTest:Z

.field public final mName:Landroid/content/ComponentName;

.field public mSentStartBroadcast:Z

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZI)V
    .locals 0
    .param p2, "token"    # Landroid/os/Binder;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "isTest"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 273
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 274
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    .line 275
    iput p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 276
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$200(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
