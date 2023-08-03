.class public final Lh5/a;
.super Ljava/lang/Object;
.source "CaptchaToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0011\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\t\u001a\u0004\u0008\u0013\u0010\u000b\"\u0004\u0008\u0014\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lh5/a;",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "type",
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "b",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "",
        "value",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "f",
        "(Ljava/lang/String;)V",
        "",
        "d",
        "()Z",
        "isOperable",
        "graphId",
        "a",
        "e",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh5/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    .line 3
    iput-object p2, p0, Lh5/a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lh5/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lh5/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lh5/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lh5/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lh5/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lh5/a;->b:Ljava/lang/String;

    return-void
.end method
