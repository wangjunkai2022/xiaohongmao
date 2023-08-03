.class public abstract Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.super Ljava/lang/Object;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$c;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0004\n\u000b\u000c\r\u000e\u000fB\u0017\u0008\u0004\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0004\u0010\u0006\u0082\u0001\u0007\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;",
        "",
        "",
        "",
        "a",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "permissions",
        "<init>",
        "(Ljava/util/List;)V",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$c;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;",
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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;->a:Ljava/util/List;

    return-object v0
.end method
