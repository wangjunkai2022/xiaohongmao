.class final Lshaded/org/apache/commons/codec/language/bm/f$d;
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
