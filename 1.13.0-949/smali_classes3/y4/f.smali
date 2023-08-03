.class public final Ly4/f;
.super Ljava/lang/Object;
.source "AnalyticsController_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Ly4/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly4/f;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Ly4/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)",
            "Ly4/f;"
        }
    .end annotation

    new-instance v0, Ly4/f;

    invoke-direct {v0, p0}, Ly4/f;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ly4/e;
    .locals 1

    new-instance v0, Ly4/e;

    invoke-direct {v0, p0}, Ly4/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public b()Ly4/e;
    .locals 1

    iget-object v0, p0, Ly4/f;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ly4/f;->c(Landroid/content/Context;)Ly4/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly4/f;->b()Ly4/e;

    move-result-object v0

    return-object v0
.end method
