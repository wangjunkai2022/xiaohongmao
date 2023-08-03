.class public Lj7/a;
.super Ljava/lang/Object;
.source "RatioItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Float;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj7/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lj7/a;->b:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lj7/a;->c:I

    return v0
.end method

.method public b()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lj7/a;->b:Ljava/lang/Float;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lj7/a;->c:I

    return-void
.end method

.method public e(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lj7/a;->b:Ljava/lang/Float;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj7/a;->a:Ljava/lang/String;

    return-void
.end method
