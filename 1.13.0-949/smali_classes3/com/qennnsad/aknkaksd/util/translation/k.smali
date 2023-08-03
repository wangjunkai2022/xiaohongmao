.class public final Lcom/qennnsad/aknkaksd/util/translation/k;
.super Ljava/lang/Object;
.source "TranslatorRapid_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/translation/d;",
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
            "Lcom/qennnsad/aknkaksd/util/translation/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/k;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/util/translation/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/translation/d;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/translation/k;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/k;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/translation/k;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/util/translation/d;)Lcom/qennnsad/aknkaksd/util/translation/h;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/h;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/translation/h;-><init>(Lcom/qennnsad/aknkaksd/util/translation/d;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/util/translation/h;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/k;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/translation/d;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/k;->c(Lcom/qennnsad/aknkaksd/util/translation/d;)Lcom/qennnsad/aknkaksd/util/translation/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/translation/k;->b()Lcom/qennnsad/aknkaksd/util/translation/h;

    move-result-object v0

    return-object v0
.end method
