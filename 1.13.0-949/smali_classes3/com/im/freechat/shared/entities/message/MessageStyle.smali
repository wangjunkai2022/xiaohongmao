.class public final Lcom/im/freechat/shared/entities/message/MessageStyle;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;,
        Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002 !B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nH\u00c6\u0003J?\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/MessageStyle;",
        "",
        "offset",
        "",
        "length",
        "type",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;",
        "url",
        "",
        "urlTarget",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V",
        "getLength",
        "()I",
        "getOffset",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;",
        "getUrl",
        "()Ljava/lang/String;",
        "getUrlTarget",
        "()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "StyleType",
        "StyleUrlTarget",
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
.field private final length:I

.field private final offset:I

.field private final type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V
    .locals 1
    .param p3    # Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    .line 3
    iput p2, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    .line 4
    iput-object p3, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/shared/entities/message/MessageStyle;-><init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/message/MessageStyle;IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/MessageStyle;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/im/freechat/shared/entities/message/MessageStyle;->copy(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)Lcom/im/freechat/shared/entities/message/MessageStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    return v0
.end method

.method public final component3()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    return-object v0
.end method

.method public final copy(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)Lcom/im/freechat/shared/entities/message/MessageStyle;
    .locals 7
    .param p3    # Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/shared/entities/message/MessageStyle;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/shared/entities/message/MessageStyle;-><init>(IILcom/im/freechat/shared/entities/message/MessageStyle$StyleType;Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V

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
    instance-of v1, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/message/MessageStyle;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    iget v3, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    iget v3, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    iget-object p1, p1, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    return v0
.end method

.method public final getType()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlTarget()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageStyle(offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->type:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/MessageStyle;->urlTarget:Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
