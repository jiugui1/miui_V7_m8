.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 205
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 206
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 211
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    .line 214
    :cond_0
    return-void
.end method

.method public releaseContentObserver()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 218
    return-void
.end method
