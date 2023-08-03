.class public final Lcom/im/freechat/base/a$b$a;
.super Lcom/im/freechat/base/a$b;
.source "BaseViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/base/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseViewModel.kt\ncom/im/freechat/base/BaseViewModel$Toast$ResMessage\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,50:1\n26#2:51\n*S KotlinDebug\n*F\n+ 1 BaseViewModel.kt\ncom/im/freechat/base/BaseViewModel$Toast$ResMessage\n*L\n41#1:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0012\u0008\u0002\u0010\u000c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R!\u0010\u000c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\n\u001a\u0004\u0008\u0003\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/im/freechat/base/a$b$a;",
        "Lcom/im/freechat/base/a$b;",
        "",
        "a",
        "I",
        "b",
        "()I",
        "msgId",
        "",
        "",
        "[Ljava/lang/Object;",
        "()[Ljava/lang/Object;",
        "formatArgs",
        "<init>",
        "(I[Ljava/lang/Object;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/im/freechat/base/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/im/freechat/base/a$b$a;->a:I

    iput-object p2, p0, Lcom/im/freechat/base/a$b$a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/base/a$b$a;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/a$b$a;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/base/a$b$a;->a:I

    return v0
.end method
