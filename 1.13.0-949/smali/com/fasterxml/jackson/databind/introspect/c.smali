.class public final Lcom/fasterxml/jackson/databind/introspect/c;
.super Lcom/fasterxml/jackson/databind/introspect/a;
.source "AnnotatedClass.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/c$a;
    }
.end annotation


# static fields
.field private static final o:Lcom/fasterxml/jackson/databind/introspect/c$a;


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field protected final g:Lcom/fasterxml/jackson/databind/introspect/l$a;

.field protected final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final i:Z

.field protected final j:Lcom/fasterxml/jackson/databind/util/a;

.field protected k:Lcom/fasterxml/jackson/databind/introspect/c$a;

.field protected l:Lcom/fasterxml/jackson/databind/introspect/h;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected transient n:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/c$a;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/c$a;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/c;->o:Lcom/fasterxml/jackson/databind/introspect/c$a;

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/util/a;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/introspect/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/util/a;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/c;->d:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/c;->h:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 7
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/introspect/c;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 8
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/introspect/c;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 9
    iput-object p8, p0, Lcom/fasterxml/jackson/databind/introspect/c;->g:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 10
    iput-object p9, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 11
    iput-boolean p10, p0, Lcom/fasterxml/jackson/databind/introspect/c;->i:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/a;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->d:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->h:Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->d()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 20
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->g:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->i:Z

    return-void
.end method

.method private final b()Lcom/fasterxml/jackson/databind/introspect/c$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->k:Lcom/fasterxml/jackson/databind/introspect/c$a;

    if-nez v0, :cond_1

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v4, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/c;->o:Lcom/fasterxml/jackson/databind/introspect/c$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/c;->h:Ljava/lang/Class;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/c;->i:Z

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/introspect/e;->p(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/c$a;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->k:Lcom/fasterxml/jackson/databind/introspect/c$a;

    :cond_1
    return-object v0
.end method

.method private final c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->m:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v5, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/c;->g:Lcom/fasterxml/jackson/databind/introspect/l$a;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/c;->i:Z

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/introspect/f;->m(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Z)Ljava/util/List;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->m:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method private final d()Lcom/fasterxml/jackson/databind/introspect/h;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->l:Lcom/fasterxml/jackson/databind/introspect/h;

    if-nez v0, :cond_1

    .line 2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v5, :cond_0

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/h;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/h;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->e:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/c;->g:Lcom/fasterxml/jackson/databind/introspect/l$a;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/c;->d:Ljava/util/List;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/c;->h:Ljava/lang/Class;

    iget-boolean v8, p0, Lcom/fasterxml/jackson/databind/introspect/c;->i:Z

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/fasterxml/jackson/databind/introspect/g;->m(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/h;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->l:Lcom/fasterxml/jackson/databind/introspect/h;

    :cond_1
    return-object v0
.end method

.method public static e(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p1}, Lcom/fasterxml/jackson/databind/introspect/c;->h(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/d;->i(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p1}, Lcom/fasterxml/jackson/databind/introspect/c;->j(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/d;->o(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->f:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->c:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->resolveMemberType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public annotations()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/i;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/i;->d()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "please use getAnnotations/ hasAnnotation to check for Annotations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/g;->Q(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/c;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->m()Ljava/lang/Class;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/a;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/a;->has(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasOneOf([Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/a;->hasOneOf([Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->d()Lcom/fasterxml/jackson/databind/introspect/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/h;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public n()Lcom/fasterxml/jackson/databind/util/a;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->b()Lcom/fasterxml/jackson/databind/introspect/c$a;

    move-result-object v0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/c$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->b()Lcom/fasterxml/jackson/databind/introspect/c$a;

    move-result-object v0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/c$a;->a:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->b()Lcom/fasterxml/jackson/databind/introspect/c$a;

    move-result-object v0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/c$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public r()I
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->d()Lcom/fasterxml/jackson/databind/introspect/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/h;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->j:Lcom/fasterxml/jackson/databind/util/a;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/a;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->b:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->c0(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/c;->n:Ljava/lang/Boolean;

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/c;->d()Lcom/fasterxml/jackson/databind/introspect/h;

    move-result-object v0

    return-object v0
.end method
