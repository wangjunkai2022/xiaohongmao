.class public final Lg5/c;
.super Ljava/lang/Object;
.source "LocalDataManager_Factory.java"

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
        "Lg5/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
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
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/c;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lg5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ">;)",
            "Lg5/c;"
        }
    .end annotation

    new-instance v0, Lg5/c;

    invoke-direct {v0, p0}, Lg5/c;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Lg5/a;
    .locals 1

    new-instance v0, Lg5/a;

    invoke-direct {v0, p0}, Lg5/a;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg5/a;
    .locals 1

    iget-object v0, p0, Lg5/c;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-static {v0}, Lg5/c;->c(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Lg5/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg5/c;->b()Lg5/a;

    move-result-object v0

    return-object v0
.end method
