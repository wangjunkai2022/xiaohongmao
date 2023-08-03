.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;
.super Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "b",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "()Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "attachment",
        "<init>",
        "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V",
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
.field private final b:Lcom/im/freechat/shared/entities/message/VideoAttachment;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/message/VideoAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;->b:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    return-void
.end method


# virtual methods
.method public final b()Lcom/im/freechat/shared/entities/message/VideoAttachment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;->b:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    return-object v0
.end method
