.class public final Lcom/google/common/net/g;
.super Ljava/lang/Object;
.source "UrlEscapers.java"


# annotations
.annotation build Lh3/b;
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "-_.*"

.field static final b:Ljava/lang/String; = "-._~!$\'()*,;&=@:"

.field private static final c:Lcom/google/common/escape/f;

.field private static final d:Lcom/google/common/escape/f;

.field private static final e:Lcom/google/common/escape/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/net/f;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/g;->c:Lcom/google/common/escape/f;

    .line 2
    new-instance v0, Lcom/google/common/net/f;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/g;->d:Lcom/google/common/escape/f;

    .line 3
    new-instance v0, Lcom/google/common/net/f;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/g;->e:Lcom/google/common/escape/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/net/g;->c:Lcom/google/common/escape/f;

    return-object v0
.end method

.method public static b()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/net/g;->e:Lcom/google/common/escape/f;

    return-object v0
.end method

.method public static c()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/net/g;->d:Lcom/google/common/escape/f;

    return-object v0
.end method
