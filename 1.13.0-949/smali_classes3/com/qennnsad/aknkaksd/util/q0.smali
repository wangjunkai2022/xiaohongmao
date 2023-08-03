.class public final Lcom/qennnsad/aknkaksd/util/q0;
.super Ljava/lang/Object;
.source "MysteryUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/q0;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/Mysterable;",
        "anon",
        "",
        "noClipBoard",
        "",
        "b",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "appContext",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Landroid/content/Context;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg5/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lm6/b;
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/q0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/q0;->b:Lg5/a;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/util/q0;Lcom/qennnsad/aknkaksd/data/bean/Mysterable;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/q0;->b(Lcom/qennnsad/aknkaksd/data/bean/Mysterable;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/Mysterable;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/Mysterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "anon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/q0;->c(Lcom/qennnsad/aknkaksd/util/q0;Lcom/qennnsad/aknkaksd/data/bean/Mysterable;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/qennnsad/aknkaksd/data/bean/Mysterable;Z)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/Mysterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "anon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/util/q0;->b:Lg5/a;

    invoke-virtual {p2}, Lg5/a;->F()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/bean/Mysterable;->getMysteryUid()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "null"

    :cond_1
    move-object v1, p1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/q0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const p1, 0x7f130439

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/h1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f1302b8

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
