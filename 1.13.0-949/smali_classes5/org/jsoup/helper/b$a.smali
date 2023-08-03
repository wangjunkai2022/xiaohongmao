.class Lorg/jsoup/helper/b$a;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/b$a;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/jsoup/helper/b$a;->b:Z

    return-void
.end method

.method static synthetic a(Lorg/jsoup/helper/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/helper/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lorg/jsoup/helper/b$a;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/helper/b$a;->b:Z

    return p0
.end method
