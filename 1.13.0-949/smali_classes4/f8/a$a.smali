.class public Lf8/a$a;
.super Ljava/lang/Object;
.source "IRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[F

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lf8/a$a;->a:[F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lf8/a$a;->c:I

    int-to-float v0, v0

    iget v1, p0, Lf8/a$a;->b:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lf8/a$a;->c(FFFF)V

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lf8/a$a;->c:I

    int-to-float v0, v0

    iget v1, p0, Lf8/a$a;->b:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lf8/a$a;->c(FFFF)V

    return-void
.end method

.method public c(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf8/a$a;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 3
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 4
    aput p4, v0, p1

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1
    iput p1, p0, Lf8/a$a;->c:I

    .line 2
    iput p2, p0, Lf8/a$a;->b:I

    return-void
.end method
