.class public Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.super Lcom/fasterxml/jackson/databind/ser/PropertyWriter;
.source "BeanPropertyWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lc2/a;
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;

.field private static final v:J = 0x1L


# instance fields
.field protected final e:Lcom/fasterxml/jackson/core/io/SerializedString;

.field protected final f:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final g:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final h:Lcom/fasterxml/jackson/databind/JavaType;

.field protected i:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final transient j:Lcom/fasterxml/jackson/databind/util/a;

.field protected final k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected transient l:Ljava/lang/reflect/Method;

.field protected transient m:Ljava/lang/reflect/Field;

.field protected n:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected transient q:Lcom/fasterxml/jackson/databind/ser/impl/c;

.field protected final r:Z

.field protected final s:Ljava/lang/Object;

.field protected final t:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected transient u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 24
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 29
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    .line 30
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 31
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    .line 32
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 33
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 34
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 35
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 36
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    .line 38
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/util/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/util/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/k;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 4
    new-instance p3, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 6
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 7
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    const/4 p1, 0x0

    if-nez p5, :cond_0

    .line 8
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 9
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 10
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 11
    instance-of p3, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz p3, :cond_1

    .line 12
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 14
    :cond_1
    instance-of p3, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 16
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 17
    :cond_2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 18
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    .line 19
    :goto_1
    iput-boolean p8, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    .line 20
    iput-object p9, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    .line 22
    iput-object p10, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 1

    .line 40
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V

    .line 61
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 62
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 63
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 64
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 65
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 66
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 67
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    .line 68
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    .line 69
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    .line 70
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    .line 72
    :cond_0
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 73
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 74
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    .line 75
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    .line 76
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    .line 77
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 78
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 43
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 44
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 45
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 46
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 47
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 48
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    .line 49
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    .line 50
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    .line 51
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 52
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    .line 53
    :cond_0
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 54
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 55
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    .line 56
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    .line 57
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    .line 58
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 59
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;)V
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/e;

    return-void
.end method

.method public assignNullSerializer(Lcom/fasterxml/jackson/databind/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    .line 3
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Cannot override _nullSerializer: had a %s, trying to set to %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method

.method public assignSerializer(Lcom/fasterxml/jackson/databind/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    .line 3
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Cannot override _serializer: had a %s, trying to set to %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method

.method public assignTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    return-void
.end method

.method protected b(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/l;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->f(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->g(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p2

    .line 5
    :goto_0
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    if-eq p1, p3, :cond_1

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 7
    :cond_1
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method protected c(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/g;->usesObjectId()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    instance-of p1, p4, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    const-string p2, "Direct self-reference leading to cycle"

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/l;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SELF_REFERENCES_AS_NULL:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->h0()Lcom/fasterxml/jackson/core/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected d(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;->r(Lcom/fasterxml/jackson/databind/BeanProperty;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;->m(Lcom/fasterxml/jackson/databind/BeanProperty;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/fasterxml/jackson/databind/l;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 9
    instance-of v3, v1, Ld2/c;

    if-eqz v3, :cond_2

    .line 10
    check-cast v1, Ld2/c;

    invoke-interface {v1, p2, v0, v2}, Ld2/c;->getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/e;

    move-result-object p2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Ld2/a;->a()Lcom/fasterxml/jackson/databind/e;

    move-result-object p2

    .line 12
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->a(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/e;)V

    return-void
.end method

.method e()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 6
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    :cond_2
    return-object p0
.end method

.method public fixAccess(Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->j:Lcom/fasterxml/jackson/databind/util/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/a;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGenericPropertyType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->k:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawSerializationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->h:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getSerializedName()Lcom/fasterxml/jackson/core/j;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-object v0
.end method

.method public getSerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->g:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    return-object v0
.end method

.method public getViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->t:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public hasNullSerializer()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializer()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnwrapping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    :cond_0
    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method public rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->d(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 9
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p0, v2, v1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->b(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 11
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 12
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 13
    invoke-virtual {v1, p3, v0}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    return-void

    .line 15
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    return-void

    :cond_6
    if-ne v0, p1, :cond_7

    .line 17
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->c(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/g;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez p1, :cond_8

    .line 19
    invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    :goto_3
    return-void
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->q:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 9
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p0, v2, v1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->b(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 11
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->s:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 12
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 13
    invoke-virtual {v1, p3, v0}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 14
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    if-ne v0, p1, :cond_7

    .line 15
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->c(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/g;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    .line 17
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->p:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez p1, :cond_8

    .line 18
    invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_2

    .line 19
    :cond_8
    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    :goto_2
    return-void
.end method

.method public serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->t1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->o:Lcom/fasterxml/jackson/databind/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    :goto_0
    return-void
.end method

.method public setInternalSetting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->i:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "property \'"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    const-string v2, "#"

    if-eqz v1, :cond_0

    const-string v1, "via method "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->l:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    const-string v1, "field \""

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->m:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "virtual"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_2

    const-string v1, ", no static serializer"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->n:Lcom/fasterxml/jackson/databind/g;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x29

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method

.method public willSuppressNulls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->r:Z

    return v0
.end method

.method public wouldConflictWithName(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->e:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->hasNamespace()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
