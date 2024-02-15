const cds = require('@sap/cds');

cds.on('serving', (service) => {
  addLinkToGraphQl(service);
});

function addLinkToGraphQl(service) {
  const provider = (entity) => {
    if (entity) return;
    return { href: 'graphql', name: 'GraphQl', title: 'Show in GraphQL' };
  };
  service.$linkProviders
    ? service.$linkProviders.push(provider)
    : (service.$linkProviders = [provider]);
}
