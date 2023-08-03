.class public final Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;
.super Ljava/lang/Object;
.source "LoggedInSuccessfully.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;,
        Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "type",
        "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;",
        "state",
        "Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;",
        "(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)V",
        "getState",
        "()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "State",
        "Type",
        "data_release"
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
.field private final state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "state"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->copy(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "state"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    invoke-direct {v0, p1, p2}, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;-><init>(Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/im/freechat/data/openapigen/models/SocketMessage$DefaultImpls;->getClassName(Lcom/im/freechat/data/openapigen/models/SocketMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggedInSuccessfully(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->type:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;->state:Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
