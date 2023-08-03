.class public final Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;
.super Ljava/lang/Object;
.source "CustomToast.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/toast/CustomToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;",
        "",
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast;",
        "a",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;",
        "b",
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;",
        "type",
        "",
        "c",
        "Ljava/lang/String;",
        "message",
        "<init>",
        "(Landroid/content/Context;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Ljava/lang/String;)V",
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
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->b:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 5
    sget-object p2, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Normal:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;-><init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/util/toast/CustomToast;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;->b:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
