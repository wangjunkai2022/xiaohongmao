.class public final Lf5/c;
.super Ljava/lang/Object;
.source "AppUpdateModule_ProvideDownloadManagerFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
    value = {
        "dagger.hilt.android.qualifiers.ApplicationContext"
    }
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Landroid/app/DownloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lf5/a;

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf5/a;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/a;",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf5/c;->a:Lf5/a;

    .line 3
    iput-object p2, p0, Lf5/c;->b:Lu7/c;

    return-void
.end method

.method public static a(Lf5/a;Lu7/c;)Lf5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/a;",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)",
            "Lf5/c;"
        }
    .end annotation

    new-instance v0, Lf5/c;

    invoke-direct {v0, p0, p1}, Lf5/c;-><init>(Lf5/a;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lf5/a;Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 0

    invoke-virtual {p0, p1}, Lf5/a;->b(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/app/DownloadManager;
    .locals 2

    iget-object v0, p0, Lf5/c;->a:Lf5/a;

    iget-object v1, p0, Lf5/c;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lf5/c;->c(Lf5/a;Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf5/c;->b()Landroid/app/DownloadManager;

    move-result-object v0

    return-object v0
.end method
