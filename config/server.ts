export default ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS', ['ug8wamUuFHwQfkYqEgtHU1lmSAI437XUZhQRi3O1sdd+TGKSak7xZ3d8FZFAc58Q8fqW8n2lHRRK/vDK']),
  },
});

