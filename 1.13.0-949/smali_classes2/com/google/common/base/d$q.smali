.class final Lcom/google/common/base/d$q;
.super Lcom/google/common/base/d$v;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q"
.end annotation


# static fields
.field static final c:Lcom/google/common/base/d$q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/d$q;

    invoke-direct {v0}, Lcom/google/common/base/d$q;-><init>()V

    sput-object v0, Lcom/google/common/base/d$q;->c:Lcom/google/common/base/d$q;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lcom/google/common/base/d$v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
