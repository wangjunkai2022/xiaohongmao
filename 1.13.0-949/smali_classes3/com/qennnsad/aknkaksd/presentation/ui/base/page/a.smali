.class public Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;
.super Ljava/lang/Object;
.source "LinearPageGenerator.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;->a:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;->a:I

    return v0
.end method

.method public b(I)I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;->b:I

    add-int/2addr p1, v0

    return p1
.end method
