.class public abstract Lcom/im/freechat/shared/entities/Type;
.super Ljava/lang/Object;
.source "ChatMemberInfo.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/Type$LocalMask;,
        Lcom/im/freechat/shared/entities/Type$NicknameMask;,
        Lcom/im/freechat/shared/entities/Type$ChatMemberMask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/im/freechat/shared/entities/Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0003\t\n\u000bB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/Type;",
        "",
        "priority",
        "",
        "(I)V",
        "getPriority",
        "()I",
        "compareTo",
        "other",
        "ChatMemberMask",
        "LocalMask",
        "NicknameMask",
        "Lcom/im/freechat/shared/entities/Type$ChatMemberMask;",
        "Lcom/im/freechat/shared/entities/Type$LocalMask;",
        "Lcom/im/freechat/shared/entities/Type$NicknameMask;",
        "shared"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/im/freechat/shared/entities/Type;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/shared/entities/Type;-><init>(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/im/freechat/shared/entities/Type;)I
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/im/freechat/shared/entities/Type;->priority:I

    iget p1, p1, Lcom/im/freechat/shared/entities/Type;->priority:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/im/freechat/shared/entities/Type;

    invoke-virtual {p0, p1}, Lcom/im/freechat/shared/entities/Type;->compareTo(Lcom/im/freechat/shared/entities/Type;)I

    move-result p1

    return p1
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/Type;->priority:I

    return v0
.end method
