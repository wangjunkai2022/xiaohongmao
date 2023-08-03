.class final Lshaded/org/apache/commons/codec/language/bm/f$a;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lshaded/org/apache/commons/codec/language/bm/f$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshaded/org/apache/commons/codec/language/bm/f;->t(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Ljava/util/regex/Pattern;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f$a;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
