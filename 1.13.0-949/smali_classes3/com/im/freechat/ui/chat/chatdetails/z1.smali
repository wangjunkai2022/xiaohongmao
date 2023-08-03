.class public final Lcom/im/freechat/ui/chat/chatdetails/z1;
.super Ljava/lang/Object;
.source "ChatDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\t\u0010\u0005\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003J@\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u000c\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001e\u001a\u0004\u0008\u001f\u0010\nR\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/z1;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "h",
        "a",
        "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "b",
        "",
        "c",
        "()Ljava/lang/Integer;",
        "d",
        "extraMessage",
        "extraMessageType",
        "originalChat",
        "additionalMessages",
        "e",
        "(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)Lcom/im/freechat/ui/chat/chatdetails/z1;",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "i",
        "()Lcom/im/freechat/shared/entities/message/Message;",
        "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "j",
        "()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
        "Ljava/lang/Integer;",
        "k",
        "Ljava/util/List;",
        "g",
        "()Ljava/util/List;",
        "<init>",
        "(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V",
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
.field private final a:Lcom/im/freechat/shared/entities/message/Message;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extraMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMessageType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalMessages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/z1;-><init>(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/chatdetails/z1;Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/im/freechat/ui/chat/chatdetails/z1;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/z1;->e(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)Lcom/im/freechat/ui/chat/chatdetails/z1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/im/freechat/shared/entities/message/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    return-object v0
.end method

.method public final b()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)Lcom/im/freechat/ui/chat/chatdetails/z1;
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;)",
            "Lcom/im/freechat/ui/chat/chatdetails/z1;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "extraMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMessageType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalMessages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/z1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/z1;-><init>(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/ui/chat/chatdetails/z1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/z1;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    iget-object v3, p1, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    iget-object v3, p1, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/im/freechat/shared/entities/message/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    return-object v0
.end method

.method public final j()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtraMessageInfo(extraMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->a:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraMessageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->b:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/z1;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
