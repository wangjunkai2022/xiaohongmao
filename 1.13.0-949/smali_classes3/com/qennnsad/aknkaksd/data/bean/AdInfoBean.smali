.class public final Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
.super Ljava/lang/Object;
.source "AdInfoBean.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002BW\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0011\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0000H\u0096\u0002J\u0010\u0010!\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\t\u0010\"\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\'\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003Jp\u0010)\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u0010*J\t\u0010+\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010,\u001a\u00020-2\u0008\u0010 \u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\u0004H\u00d6\u0001J\t\u00100\u001a\u00020\u0007H\u00d6\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0004H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019\u00a8\u00066"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "",
        "adType",
        "scene",
        "",
        "rowNo",
        "picPath",
        "targetUrl",
        "content",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
        "target",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V",
        "getAdType",
        "()I",
        "getContent",
        "()Ljava/util/List;",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getPicPath",
        "()Ljava/lang/String;",
        "getRowNo",
        "getScene",
        "getTarget",
        "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "getTargetUrl",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;",
        "describeContents",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final adType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adtype"
    .end annotation
.end field

.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final picPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic_path"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final rowNo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "row_no"
    .end annotation
.end field

.field private final scene:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final targetUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean$Creator;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean$Creator;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
            ">;",
            "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->copy(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;)I
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    iget v1, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->compareTo(Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;
    .locals 10
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
            ">;",
            "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
            ")",
            "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v9, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;-><init>(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V

    return-object v9
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAdType()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    return v0
.end method

.method public final getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPicPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getRowNo()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    return v0
.end method

.method public final getScene()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    return-object v0
.end method

.method public final getTargetUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfoBean(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", picPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->adType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->scene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->rowNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->picPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->targetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->content:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;

    invoke-virtual {v3, p1, p2}, Lcom/qennnsad/aknkaksd/data/bean/ContentBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;->target:Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
