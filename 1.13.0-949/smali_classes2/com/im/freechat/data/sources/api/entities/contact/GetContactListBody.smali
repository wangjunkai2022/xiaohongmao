.class public final Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;
.super Ljava/lang/Object;
.source "GetContactListBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;",
        "",
        "type",
        "",
        "size",
        "",
        "page",
        "(Ljava/lang/String;II)V",
        "getPage",
        "()I",
        "getSize",
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
.field private final page:I

.field private final size:I

.field private final type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
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
            name = "size"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "page"
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->type:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->size:I

    .line 4
    iput p3, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->page:I

    return-void
.end method


# virtual methods
.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->page:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->size:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;->type:Ljava/lang/String;

    return-object v0
.end method
