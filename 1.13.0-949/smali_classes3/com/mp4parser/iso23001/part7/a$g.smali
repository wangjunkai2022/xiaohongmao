.class Lcom/mp4parser/iso23001/part7/a$g;
.super Lcom/mp4parser/iso23001/part7/a$b;
.source "CencSampleAuxiliaryDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/iso23001/part7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private b:I

.field private c:B

.field final synthetic d:Lcom/mp4parser/iso23001/part7/a;


# direct methods
.method public constructor <init>(Lcom/mp4parser/iso23001/part7/a;IJ)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mp4parser/iso23001/part7/a$g;->d:Lcom/mp4parser/iso23001/part7/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mp4parser/iso23001/part7/a$b;-><init>(Lcom/mp4parser/iso23001/part7/a;Lcom/mp4parser/iso23001/part7/a$b;)V

    .line 2
    iput p2, p0, Lcom/mp4parser/iso23001/part7/a$g;->b:I

    long-to-int p1, p3

    int-to-byte p1, p1

    .line 3
    iput-byte p1, p0, Lcom/mp4parser/iso23001/part7/a$g;->c:B

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-byte v0, p0, Lcom/mp4parser/iso23001/part7/a$g;->c:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public clear()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso23001/part7/a$g;->b:I

    return v0
.end method
