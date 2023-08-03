.class public abstract Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;
.super Ljava/lang/Object;
.source "AnchorTypeData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u001b\u0008\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H&R\u0017\u0010\u0008\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\r\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u0082\u0001\u0006\u0010\u0011\u0012\u0013\u0014\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "a",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "c",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "type",
        "",
        "b",
        "I",
        "()I",
        "title",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;I)V",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/e;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/g;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/s;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/t;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;",
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
.field private final a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;I)V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/fragment/app/Fragment;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;->b:I

    return v0
.end method

.method public final c()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-object v0
.end method
