.class Lcom/fasterxml/jackson/core/io/b$a;
.super Ljava/lang/Object;
.source "CharTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/io/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/fasterxml/jackson/core/io/b$a;


# instance fields
.field private a:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/io/b$a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/b$a;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/b$a;->b:Lcom/fasterxml/jackson/core/io/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [[I

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/b$a;->a:[[I

    return-void
.end method


# virtual methods
.method public a(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/b$a;->a:[[I

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->i:[I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 3
    aget v1, v0, p1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 4
    aput v1, v0, p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/b$a;->a:[[I

    aput-object v0, v1, p1

    :cond_1
    return-object v0
.end method
