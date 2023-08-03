.class public final Lcom/qennnsad/aknkaksd/domain/base/HasActionException;
.super Ljava/lang/Exception;
.source "RequestException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/HasActionException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lcom/qennnsad/aknkaksd/domain/base/a;",
        "a",
        "Lcom/qennnsad/aknkaksd/domain/base/a;",
        "getAction",
        "()Lcom/qennnsad/aknkaksd/domain/base/a;",
        "action",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/base/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/domain/base/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/base/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/base/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/base/HasActionException;->a:Lcom/qennnsad/aknkaksd/domain/base/a;

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/qennnsad/aknkaksd/domain/base/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/HasActionException;->a:Lcom/qennnsad/aknkaksd/domain/base/a;

    return-object v0
.end method
