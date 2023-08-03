.class Lcom/googlecode/mp4parser/authoring/tracks/p$a;
.super Ljava/lang/Object;
.source "MP3TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field final synthetic k:Lcom/googlecode/mp4parser/authoring/tracks/p;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/p;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$a;->k:Lcom/googlecode/mp4parser/authoring/tracks/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$a;->e:I

    mul-int/lit16 v0, v0, 0x90

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$a;->g:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$a;->h:I

    add-int/2addr v0, v1

    return v0
.end method
