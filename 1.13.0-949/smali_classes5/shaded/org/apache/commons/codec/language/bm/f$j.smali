.class final Lshaded/org/apache/commons/codec/language/bm/f$j;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f$j;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lshaded/org/apache/commons/codec/language/bm/f$j;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f$j;->a:Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/language/bm/f;->c(Ljava/lang/CharSequence;C)Z

    move-result p1

    iget-boolean v0, p0, Lshaded/org/apache/commons/codec/language/bm/f$j;->b:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
