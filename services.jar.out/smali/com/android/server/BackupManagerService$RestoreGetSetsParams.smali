.class Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreGetSetsParams"
.end annotation


# instance fields
.field public observer:Landroid/app/backup/IRestoreObserver;

.field public session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V
    .locals 0
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_session"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;
    .param p4, "_observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 317
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 318
    iput-object p4, p0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 319
    return-void
.end method
