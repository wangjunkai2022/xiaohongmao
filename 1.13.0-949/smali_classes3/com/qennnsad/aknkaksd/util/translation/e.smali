.class public final Lcom/qennnsad/aknkaksd/util/translation/e;
.super Ljava/lang/Object;
.source "TranslatorBackend_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/util/translation/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
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
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/e;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/util/translation/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/translation/e;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/translation/e;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/repository/m;)Lcom/qennnsad/aknkaksd/util/translation/d;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/translation/d;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/util/translation/d;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/e;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/e;->c(Lcom/qennnsad/aknkaksd/data/repository/m;)Lcom/qennnsad/aknkaksd/util/translation/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/translation/e;->b()Lcom/qennnsad/aknkaksd/util/translation/d;

    move-result-object v0

    return-object v0
.end method
