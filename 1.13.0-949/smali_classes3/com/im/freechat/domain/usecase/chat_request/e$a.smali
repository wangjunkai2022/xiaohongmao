.class public final Lcom/im/freechat/domain/usecase/chat_request/e$a;
.super Ljava/lang/Object;
.source "ReplyFriendRequestInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/domain/usecase/chat_request/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\u0003\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/chat_request/e$a;",
        "",
        "",
        "a",
        "I",
        "b",
        "()I",
        "targetUserId",
        "",
        "Z",
        "()Z",
        "approved",
        "<init>",
        "(IZ)V",
        "domain"
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

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/domain/usecase/chat_request/e$a;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/im/freechat/domain/usecase/chat_request/e$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/domain/usecase/chat_request/e$a;->b:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/chat_request/e$a;->a:I

    return v0
.end method
