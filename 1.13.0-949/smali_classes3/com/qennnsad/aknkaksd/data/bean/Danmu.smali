.class public Lcom/qennnsad/aknkaksd/data/bean/Danmu;
.super Ljava/lang/Object;
.source "Danmu.java"


# instance fields
.field public avatarUrl:Landroid/graphics/Bitmap;

.field public content:Ljava/lang/String;

.field public effectid:I

.field public id:J

.field public type:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->id:J

    .line 3
    iput p3, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->userId:I

    .line 4
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->type:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->id:J

    .line 8
    iput p3, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->userId:I

    .line 9
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->type:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->content:Ljava/lang/String;

    .line 11
    iput p6, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->effectid:I

    return-void
.end method


# virtual methods
.method public setAvatarUrl(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/Danmu;->avatarUrl:Landroid/graphics/Bitmap;

    return-void
.end method
