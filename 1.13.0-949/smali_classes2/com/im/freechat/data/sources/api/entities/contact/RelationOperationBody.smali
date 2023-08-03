.class public final Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;
.super Ljava/lang/Object;
.source "RelationOperationBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;",
        "",
        "type",
        "",
        "toUserId",
        "",
        "(Ljava/lang/String;I)V",
        "getToUserId",
        "()I",
        "getType",
        "()Ljava/lang/String;",
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
.field private final toUserId:I

.field private final type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "to_user_id"
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;->type:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;->toUserId:I

    return-void
.end method


# virtual methods
.method public final getToUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;->toUserId:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;->type:Ljava/lang/String;

    return-object v0
.end method
