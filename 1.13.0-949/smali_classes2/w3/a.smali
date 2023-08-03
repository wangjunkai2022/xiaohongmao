.class public Lw3/a;
.super Ljava/lang/Object;
.source "AspectRatio.java"


# static fields
.field public static final b:Lw3/a;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw3/a;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lw3/a;-><init>(I)V

    sput-object v0, Lw3/a;->b:Lw3/a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lw3/a;->a:I

    return-void
.end method

.method public static a(I)Lw3/a;
    .locals 2

    .line 1
    sget-object v0, Lw3/a;->b:Lw3/a;

    iget v1, v0, Lw3/a;->a:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lw3/a;

    invoke-direct {v0, p0}, Lw3/a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lw3/a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AspectRatio{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "value="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw3/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
